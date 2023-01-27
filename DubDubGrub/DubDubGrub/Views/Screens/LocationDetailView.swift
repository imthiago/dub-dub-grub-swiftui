//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Thiago Oliveira on 24/01/23.
//

import SwiftUI

struct LocationDetailView: View {
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]

    var body: some View {
        VStack(spacing: 16) {
            BannerImageView(imageName: "default-banner-asset")

            HStack {
                AddressView(address: "123 Main Street")
                Spacer()
            }
            .padding(.horizontal)

            DescriptionView(text: "This is a test description. This is a test description. This is a test description. This is a test description. This is a test description. This is a test description. ")
    
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.secondarySystemBackground))
                HStack(spacing: 20) {
                    Button {

                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    Link(destination: .init(string: "https://www.apple.com")!) {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    Button {

                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                    }
                    Button {

                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }
                }
            }
            .padding(.horizontal)
            Text("Who's Here?")
                .bold()
                .font(.title2)
            ScrollView {
                LazyVGrid(columns: columns) {
                    FirstNameAvatarView(firstName: "John")
                    FirstNameAvatarView(firstName: "Bruce")
                    FirstNameAvatarView(firstName: "Peter")
                    FirstNameAvatarView(firstName: "John")
                    FirstNameAvatarView(firstName: "John")
                    FirstNameAvatarView(firstName: "John")
                    FirstNameAvatarView(firstName: "John")
                    FirstNameAvatarView(firstName: "John")
                    FirstNameAvatarView(firstName: "John")
                }
            }
            Spacer()
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}

struct LocationActionButton: View {
    var color: Color
    var imageName: String

    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22, height: 22)

        }
    }
}

struct FirstNameAvatarView: View {
    var firstName: String

    var body: some View {
        VStack {
            AvatarView(size: 64)
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}

struct BannerImageView: View {
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {
    let address: String

    var body: some View {
        Label(address, systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DescriptionView: View {
    let text: String

    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .frame(height: 70)
            .padding(.horizontal)
    }
}
