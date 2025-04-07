/*
Дан неориентированный граф, возможно, с петлями и кратными ребрами. Необходимо построить компоненту связности, содержащую первую вершину.
Формат ввода

В первой строке записаны два целых числа N (1 ≤ N ≤ 103) и M (0 ≤ M ≤ 5 * 105) — количество вершин и ребер в графе. В последующих M строках перечислены ребра — пары чисел, определяющие номера вершин, которые соединяют ребра.
Формат вывода

В первую строку выходного файла выведите число K — количество вершин в компоненте связности. Во вторую строку выведите K целых чисел — вершины компоненты связности, перечисленные в порядке возрастания номеров. 
*/

#include <algorithm>
#include <iostream>
#include <vector>

void dfs(int v, std::vector<int>& visited, const std::vector<std::vector<int>>& graph, std::vector<int>& result) {
    visited[v] = 1;
    result.push_back(v);
    for (int neighbour : graph[v]) {
        if (visited[neighbour] == 0) {
            dfs(neighbour, visited, graph, result);
        }
    }
}

int main() {
    int n, m;
    std::cin >> n >> m;
    std::vector<std::vector<int>> graph;
    std::vector<int> result;
    graph.resize(n + 1);
    std::vector<int> visited{};
    visited.resize(n + 1);
    for (int i = 0; i < m; ++i) {
        int vertex_1, vertex_2;
        std::cin >> vertex_1 >> vertex_2;
        graph[vertex_1].push_back(vertex_2);
        graph[vertex_2].push_back(vertex_1);
    }
    dfs(1, visited, graph, result);
    std::sort(result.begin(), result.end());
    std::cout << result.size() << std::endl;
    for (int i : result) {
        std::cout << i << " ";
    }
    std::cout << std::endl;
}