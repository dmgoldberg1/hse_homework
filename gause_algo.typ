// TODO: create state mashin to use it as iterators in rust
#import "@preview/pyrunner:0.1.0" as py

#let compiled = py.compile(```python
    def gaussian_elimination(matrix):
        from fractions import Fraction
        rows = len(matrix)
        cols = len(matrix[0])

        matrix = [[Fraction(element) for element in row] for row in matrix]

        for i in range(min(rows, cols)):
            max_row_index = i
            for k in range(i, rows):
                if abs(matrix[k][i]) > abs(matrix[max_row_index][i]):
                    max_row_index = k
            if max_row_index != i:
                matrix[i], matrix[max_row_index] = matrix[max_row_index], matrix[i]
                yield matrix, {"method": "swap", "args": [i+1, max_row_index+1]}

            pivot = matrix[i][i]
            if pivot != 0:
                matrix[i] = [element / pivot for element in matrix[i]]
                yield matrix, {"method": "normalize", "args": [i+1, str(pivot)]}

            for j in range(rows):
                if j != i and matrix[j][i] != 0:
                    factor = matrix[j][i]
                    matrix[j] = [matrix[j][col] - factor * matrix[i][col]
                                 for col in range(cols)]
                    yield matrix, {"method": "zero_elem", "args": [j + 1, i + 1, factor]}

        yield matrix, {"method": "done", "args": None}


    def matrix_to_typst(matrix) -> str:
        return "mat(\n\t\t" + ';\n\t\t'.join(list(map(lambda line: ', '.join(map(str, line)), matrix))) + "\n\t)"


    def gaussian_elimination_solution(matrix, name="A"):
        matrix_pair = []
        was = matrix[::]
        for step, transformation in gaussian_elimination(matrix):
            res = ''
            from_ = matrix_to_typst(was)
            to = matrix_to_typst(step)
            args = transformation['args']
            method = transformation['method']
            if was == step and method != 'done':
                continue

            if method == "swap":
                res = from_ + f" |=>^({args[0]} <-> {args[1]}) " + to
            elif method == "normalize":
                res = from_ + f" |=>^({name}_({args[0]}) / ({args[1]})) " + to
            elif method == "zero_elem":
                res = from_ + f" |=>^({name}_({args[0]}) {'-' if args[2] >= 0 else '+'} {abs(args[2])} dot {name}_({args[1]})) " + to
            elif method == "done":
                res = to

            res = '$\n' + res + '\n\t$'
            matrix_pair.append(res)
            was = step[::]

        return res, was

    ```,
)

#let gaussian_method_result(matrix) = {
  let (text, result_mat) = py.call(compiled, "gaussian_elimination_solution", matrix)
  result_mat
}

#let isv(matrix, name: "A") = {
  let (text, result_mat) = py.call(compiled, "gaussian_elimination_solution", matrix, name)
  eval(text, mode: "markup")
}
