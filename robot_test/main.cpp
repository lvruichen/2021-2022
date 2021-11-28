#include<iostream>
#include<vector>
#include "eigen3/Eigen/Dense"
#include "Srobotconfig.h"

using namespace Eigen;
using namespace std;
typedef Matrix<double, 6, 1> Vector6d;
//三角形的插补，返回一个vector
void inter_triangle(vector<Vector3d> &tri)
{
    Vector3d point1;
    Vector3d point2;
    Vector3d point3;
    Vector3d temp;
    point1 = tri[0];
    point2 = tri[1];
    point3 = tri[2];
    tri.pop_back();
    tri.pop_back();
    tri.pop_back();
    for(int i = 0; i < 18; i++)
    {
        if( i < 6)
        {
            temp = point1 + (point2 - point1) * i / 6.0;
            tri.push_back(temp);
        }
        else if( 6 <= i && i < 12)
        {
            temp = point2 + (point3 - point2) * (i - 6) / 6.0;
            tri.push_back(temp);
        }
        else
        {
            temp = point3 - (point3 - point1) * (i - 12) / 6.0;
            tri.push_back(temp);
        }
    }

}
//圆形的插补。返回一个vector
void inter_circle(Vector6d heart, double r, vector<Vector3d> &cir)
{
    Vector3d circle_heart = heart.head(3);
    Vector3d point1 = circle_heart;
    Vector3d point2 = circle_heart;
    Vector3d temp;
    point1[0] = point1[0] + r;
    point2[0] = point2[0] - r;
    double step = r / 9;
    for(int i = 0; i <36; i++)
    {
        if(i < 18)
        {
            temp = point1;
            temp[0] = temp[0] - step * i;
            temp[1] = sqrt(r * r -(temp[0] - circle_heart[0]) * (temp[0] - circle_heart[0])) + circle_heart[1];
            cir.push_back(temp);
        }
        else
        {
            temp = point2;
            temp[0] = temp[0] + step * (i - 18);
            temp[1] = -1 * sqrt(r * r -(temp[0] - circle_heart[0]) * (temp[0] - circle_heart[0])) + circle_heart[1];
            cir.push_back(temp);
        }
    }

    

}
int main(int argc, char **argv) 
{ 
	double Endpose[6] {500,0,0,0,180,180};
	double angle1 = 0;
    double angle2 = 0;
    double angle3 = 0;
    double angle4 = 0;
    Vector3d triangle1(0, 0, 0);
    Vector3d triangle2(3, 4, 0);
    Vector3d triangle3(6, 0, 0);
    vector<Vector3d> tri;
    tri.push_back(triangle1);
    tri.push_back(triangle2);
    tri.push_back(triangle3);
    inter_triangle(tri);

    vector<Vector3d> cir;
    Vector6d heart;
    heart << 0, 0, 0, 0, 0, 0;
    double r = 9;
    inter_circle(heart, r, cir);
    /*
    for(int i = 0; i < 36; i++)
    {
        cout << "number: " << i << endl;
        cout << tri[i] << endl;
    }
    */

    //for(int i = 0; i < 18; i++)
    //{
    //    cout << tri[i] << endl << endl;
    //}

    
    //SRobot::SetRobotEndPos(409.694, -167.773, -17.354, 0, 180, -106.310);
    //SRobot::SetRobotJoint(-49.965, 55.391, 17.354, 79.116);
    //SRobot::GetJointAngles(angle1, angle2, angle3, angle4);
    //SRobot::GetJointEndPos(Endpose[0], Endpose[1], Endpose[2], Endpose[3], Endpose[4], Endpose[5]);
    /*
    cout << angle1 << endl
         << angle2 << endl
         << angle3 << endl
         << angle4 << endl;
    */
    /*cout << Endpose[0] << endl
         << Endpose[1] << endl
         << Endpose[2] << endl
         << Endpose[3] << endl
         << Endpose[4] << endl
         << Endpose[5] << endl;
     */
    return 0;
}
