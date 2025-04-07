/*


Требуется вычислить площадь комнаты в квадратном лабиринте.

Формат ввода

В первой строке вводится число N – размер лабиринта (3 ≤ N ≤ 10). В следующих N строках задан лабиринт (‘.’ – пустая клетка, ‘*’ – стенка). И наконец, последняя строка содержит два числа – номер строки и столбца клетки, находящейся в комнате, площадь которой необходимо вычислить. Гарантируется, что эта клетка пустая и что лабиринт окружен стенками со всех сторон.

Формат вывода

Требуется вывести единственное число – количество пустых клеток в данной комнате.
*/

#include <iostream>
#include <vector>

void dfs(int v, std::vector<int>& visited, const std::vector<std::vector<int>>& graph, int& square) {
    visited[v] = 1;
    for (int neighbour : graph[v]) {
        if (visited[neighbour] == 0) {
            square += 1;
            dfs(neighbour, visited, graph, square);
        }
    }
    
}

int main() {
    int n;
    int i, j;
    int square = 1;
    std::cin >> n;
    std::vector<std::vector<int>> graph;
    std::vector<char> labyrinth;
    std::vector<int> visited{};
    int di[4] = {0, 0, 1, -1};
    int dj[4] = {1, -1, 0, 0};
    graph.resize(n * n);
    visited.resize(n * n);
    labyrinth.resize(n * n);
    for (size_t i = 0; i < labyrinth.size(); ++i) {
        char point;
        std::cin >> point;
        labyrinth[i] = point;
    }
    std::cin >> i >> j;
    for (size_t curr_point = 0; curr_point < labyrinth.size(); ++curr_point) {
        if (labyrinth[curr_point] == '*') {
            continue;
        }
        for (int k = 0; k < 4; ++k) {
            int point_neighbour_i = curr_point / n + di[k];
            int point_neighbout_j = curr_point % n + dj[k];
            if (point_neighbour_i < 0 || point_neighbour_i >= n || point_neighbout_j < 0 || point_neighbout_j >= n) {
                continue;
            }
            int point_neighbour = n * point_neighbour_i + point_neighbout_j;
            if (labyrinth[point_neighbour] == '.') {
                graph[curr_point].push_back(point_neighbour);
            }
        }
    }
    int start_point = (i - 1) * n + (j - 1);
    dfs(start_point, visited, graph, square);
    std::cout << square << std::endl;
    
}