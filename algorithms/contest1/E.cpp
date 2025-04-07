/*


Дан ориентированный граф, возможно, с петлями и кратными ребрами.

Необходимо найти все вершины, из которых достижима первая вершина.
Формат ввода

В первой строке записаны два целых числа N (1 ≤ N ≤ 103) и M (0 ≤ M ≤ 5 * 105) — количество вершин и ребер в графе.

В последующих M строках перечислены ребра — пары чисел, определяющие номера вершин, которые соединяют ребра (в порядке «откуда» и «куда» ведет ребро).
Формат вывода

Выведите все вершины, из которых достижима первая, в порядке возрастания их номеров.
*/

// лучше развернуть рёбра и посмотреть что достижисо из первой вершины
#include <iostream>
#include <vector>


void dfs(int v, std::vector<int>& visited, const std::vector<std::vector<int>>& graph) {
    visited[v] = 1;
    for (int neighbour : graph[v]) {
        if (visited[neighbour] == 0) {
            dfs(neighbour, visited, graph);
        }
    }
}

int main() {
    int n, m;
    std::cin >> n >> m;
    std::vector<std::vector<int>> graph;
    std::vector<int> visited{};
    graph.resize(n + 1);
    visited.resize(n + 1);
    for (int i = 0; i < m; ++i) {
        int vertex_1, vertex_2;
        std::cin >> vertex_1 >> vertex_2;
        graph[vertex_1].push_back(vertex_2);
    }
    for (int v = 1; v <= n; ++v) {
        dfs(v, visited, graph);
        if (visited[1] == 1) {
            std::cout << v << " ";
            std::fill(visited.begin(), visited.end(), 0);
        }
    }
    std::cout << std::endl;
}