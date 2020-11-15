import Foundation

class Figure {
    var name: String {
        return "Фигура"
    }
    var numberOfCorners: Int {
        return 0
    }
}

class Triangle: Figure {
    override var name: String {
        return "Треугольник"
    }
    
    override var numberOfCorners: Int {
        return 3
    }
    
    let aSide: Double
    let bSide: Double
    let cSide: Double
    let hight: Double
    
    func getArea() -> Double {
        return (aSide * hight) / 2
    }
    
    init(aSide: Double, hight: Double, bSide: Double, cSide: Double) {
        self.aSide = aSide
        self.hight = hight
        self.bSide = bSide
        self.cSide = cSide
    }
    
}

extension Triangle {
    
    func checkIfTriangle() -> String {
        if aSide + bSide > cSide && aSide + cSide > bSide && bSide + cSide > aSide {
            return "Треугольник существует"
        } else {
            return "Треугольник не существует"
        }
    }
    
}

class Circle: Figure {
    override var name: String {
        return "Круг"
    }
    
    override var numberOfCorners: Int {
        return 0
    }
    
    let radius: Double
    
    func getArea() -> Double {
        return Double.pi * pow(radius, 2)
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
}

extension Circle {
    func checkIfCircle() -> String {
        if radius > 0 {
            return "Это круг"
        } else {
            return "Это точка"
        }
    }
}

protocol FigureWithParallelSides {
    var width: Double { get }
    var length: Double { get }
    var perimetr: Double { get }
}

extension FigureWithParallelSides {
    var perimetr: Double {
        return (width + length) * 2
    }
}

class Rectangle:  Figure, FigureWithParallelSides {
    
    var aSide: Double
    var bSide: Double
    var cSide: Double
    var dSide: Double
    
    var width: Double {
        return aSide
    }
    
    var length: Double {
        return bSide
    }
    override var name: String {
        return "Прямоугольник"
    }
    
    override var numberOfCorners: Int {
        return 4
    }
    
    func getArea() -> Double {
        return width * length
    }
    
    init(aSide: Double, bSide: Double, cSide: Double, dSide: Double) {
        self.aSide = aSide
        self.bSide = bSide
        self.cSide = cSide
        self.dSide = dSide

    }
    
}

extension Rectangle {
    func checkIfSquare() -> String {
        if width == length {
            return "Это квадрат"
        } else {
            return "Это не квадрат"
        }
    }
}

