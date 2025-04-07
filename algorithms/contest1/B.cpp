/*


Дан неориентированный невзвешенный граф, состоящий из N вершин и M ребер. Необходимо посчитать количество его компонент связности и вывести их.

Формат ввода

Во входном файле записано два числа N и M (0 < N ≤ 100000, 0 ≤ M ≤ 100000). В следующих M строках записаны по два числа i и j (1 ≤ i, j ≤ N), которые означают, что вершины i и j соединены ребром.

Формат вывода

В первой строчке выходного файла выведите количество компонент связности. Далее выведите сами компоненты связности в следующем формате: в первой строке количество вершин в компоненте, во второй - сами вершины в произвольном порядке. 
*/

#include <iostream>
#include <vector>

void dfs(int v, int comp, std::vector<int>& visited, const std::vector<std::vector<int>>& graph, std::vector<std::vector<int>>& result) {
    visited[v] = 1;
    result[comp].push_back(v);
    for (int neighbour : graph[v]) {
        if (visited[neighbour] == 0) {
            dfs(neighbour, comp, visited, graph, result);
        }
    }
}

int main() {
    int n, m;
    int comp = -1;
    std::cin >> n >> m;
    std::vector<std::vector<int>> graph;
    std::vector<std::vector<int>> result;
    std::vector<int> visited{};
    graph.resize(n + 1);
    visited.resize(n + 1);
    for (int i = 0; i < m; ++i) {
        int vertex_1, vertex_2;
        std::cin >> vertex_1 >> vertex_2;
        graph[vertex_1].push_back(vertex_2);
        graph[vertex_2].push_back(vertex_1);
    }
    for (int v = 1; v <= n; ++v) {
        if (visited[v] == 0) {
            ++comp;
            std::vector<int> temp{};
            result.push_back(temp);
            dfs(v, comp, visited, graph, result);
        }
    }
    std::cout << result.size() << std::endl;
    for (auto component : result) {
        std::cout << component.size() << std::endl;
        for (int vertex : component) {
            std::cout << vertex << " ";
        }
        std::cout << std::endl;
    }
}