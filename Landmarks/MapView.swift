//
//  MapView.swift
//  Landmarks
//
//  Created by Koki Makishima on 2021/04/03.
//

import SwiftUI
import MapKit

struct MapView: View {
// @State属性を使用して、複数のビューから変更できるアプリ内のデータの真実のソースを確立します。SwiftUIは基盤となるストレージを管理し、値に応じてビューを自動的に更新します。
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
