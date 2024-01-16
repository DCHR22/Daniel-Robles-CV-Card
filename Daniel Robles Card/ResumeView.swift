//
//  ResumeView.swift
//  Daniel Robles Card
//
//  Created by Camilo L-Shide on 15/01/24.
//

import SwiftUI
import PDFKit

struct ResumeView: View {
    // We have to create a URL for the PDF and save it in the pdfUrl variable
    let pdfUrl = Bundle.main.url(forResource:"CV ENG iOS 2024 1.2", withExtension: "pdf")
    
    var body: some View {
        
        ZStack{
            Color(red: 0.11, green: 0.08, blue: 0.39)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                // Using the PDFKitView and passing the previously created pdfURL
                PDFKitView(url: pdfUrl!).scaledToFill()
            }
        }
    }
}

struct PDFKitView: UIViewRepresentable {
    
    let url: URL // This isa  new variable to get the URL of the document
    
    func makeUIView(context: UIViewRepresentableContext<PDFKitView>) -> PDFView {
        // We need to create a new PDFVIew and adding a document to it.
        let pdfView = PDFView()
        pdfView.document = PDFDocument(url: self.url)
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: UIViewRepresentableContext<PDFKitView>) {
        // we will leave this empty as we don't need to update the PDF
    }
}

#Preview {
    ResumeView()
}
