/*


Дан неориентированный граф. Требуется определить, есть ли в нем цикл, и, если есть, вывести его.

Формат ввода

В первой строке дано одно число n — количество вершин в графе ( 1 ≤ n ≤ 500 ). Далее в n строках задан сам граф матрицей смежности.

Формат вывода

Если в иcходном графе нет цикла, то выведите «NO». Иначе, в первой строке выведите «YES», во второй строке выведите число k — количество вершин в цикле, а в третьей строке выведите k различных чисел — номера вершин, которые принадлежат циклу в порядке обхода (обход можно начинать с любой вершины цикла). Если циклов несколько, то выведите любой. 
*/

#include <iostream>
#include <vector>


void dfs(int v, std::vector<int>& visited, std::vector<int>& vertex_color, const std::vector<std::vector<int>>& graph, std::vector<int>& parent, std::vector<int>& result) {
    visited[v] = 1;
    vertex_color[v] = 1;
    for (int neighbour : graph[v]) {
        if (visited[neighbour] == 0) {
            parent[neighbour] = v;
            dfs(neighbour, visited, vertex_color, graph, parent, result);
            if (!result.empty()) {
                return;
            }
        } else {
            if (vertex_color[neighbour] == 1 && parent[v] != neighbour) {
                int curr_v = v;
                while (curr_v != neighbour) {
                    result.push_back(curr_v);
                    curr_v = parent[curr_v];
                }
                result.push_back(neighbour);
                return;
            }
        }
    }
    vertex_color[v] = 2;
}

int main() {
    int n;
    bool is_cycle = false;
    std::cin >> n;
    std::vector<std::vector<int>> graph;
    std::vector<int> visited{};
    std::vector<int> vertex_color{};
    std::vector<int> result;
    std::vector<int> parent;
    parent.resize(n + 1);
    vertex_color.resize(n + 1);
    graph.resize(n + 1);
    visited.resize(n + 1);
    for (int i = 1; i <= n; ++i) {
        for (int j = 1; j <= n; ++j) {
            int vertex;
            std::cin >> vertex;
            if (vertex == 1) {
                graph[i].push_back(j);
            }
        }
    }
    for (int v = 1; v <= n; ++v) {
        dfs(v, visited, vertex_color, graph, parent, result);
        if (!result.empty()) {
            std::cout << "YES" << std::endl;
            std::cout << result.size() << std::endl;
            is_cycle = true;
            for (auto el : result) {
                std::cout << el << " "; 
            }
            std::cout << std::endl;
            break;
        }
    }
    if (!is_cycle) {
        std::cout << "NO" << std::endl;
    }
}