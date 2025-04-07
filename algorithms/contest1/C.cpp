/*


Во время контрольной работы профессор Флойд заметил, что некоторые студенты обмениваются записками. Сначала он хотел поставить им всем двойки, но в тот день профессор был добрым, а потому решил разделить студентов на две группы: списывающих и дающих списывать, и поставить двойки только первым.

У профессора записаны все пары студентов, обменявшихся записками. Требуется определить, сможет ли он разделить студентов на две группы так, чтобы любой обмен записками осуществлялся от студента одной группы студенту другой группы.
Формат ввода

В первой строке находятся два числа N и M — количество студентов и количество пар студентов, обменивающихся записками (1 ≤ N ≤ 102, 0 ≤ M ≤ N(N−1)/2).

Далее в M строках расположены описания пар студентов: два числа, соответствующие номерам студентов, обменивающихся записками (нумерация студентов идёт с 1). Каждая пара студентов перечислена не более одного раза.

Формат вывода

Необходимо вывести ответ на задачу профессора Флойда. Если возможно разделить студентов на две группы - выведите YES; иначе выведите NO. 
*/

#include <iostream>
#include <vector>

bool dfs(int v, int color, std::vector<int>& visited, std::vector<int>& vertexes_color, const std::vector<std::vector<int>>& graph) {
    visited[v] = 1;
    vertexes_color[v] = color;
    for (int neighbour : graph[v]) {
        if (visited[neighbour] == 0) {
            int new_color = 3 - color;
            if (!dfs(neighbour, new_color, visited, vertexes_color, graph)) {
                return false;
            }
        } else {
            if (vertexes_color[neighbour] == color) {
                return false;
            }
        }

    }
    return true;
}

int main() {
    int n, m;
    int color = 1;
    bool result = true;
    std::cin >> n >> m;
    std::vector<std::vector<int>> graph;
    std::vector<int> visited{};
    std::vector<int> vertexes_color{};
    graph.resize(n + 1);
    visited.resize(n + 1);
    vertexes_color.resize(n + 1);
    for (int i = 0; i < m; ++i) {
        int vertex_1, vertex_2;
        std::cin >> vertex_1 >> vertex_2;
        graph[vertex_1].push_back(vertex_2);
        graph[vertex_2].push_back(vertex_1);
    }
    for (int v = 1; v <= n; ++v) {
        if (visited[v] == 0) {
            bool is_colored = dfs(v, color, visited, vertexes_color, graph);
            if (!is_colored) {
                result = false;
                break;
            }
        }
    }
    if (result) {
        std::cout << "YES" << std::endl;
        return 0;
    }
    std::cout << "NO" << std::endl;
}