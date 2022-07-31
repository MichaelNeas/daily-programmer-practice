import MetalKit

class Renderer: NSObject {}

extension Renderer: MTKViewDelegate {
    // when window is resized
    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {}
    
    func draw(in view: MTKView) {
        guard let drawable = view.currentDrawable,
              let renderPassDescriptor = view.currentRenderPassDescriptor else { return }
        
        let commandBuffer = Engine.CommandQueue.makeCommandBuffer()!
        let renderCommandEncoder = commandBuffer.makeRenderCommandEncoder(descriptor: renderPassDescriptor)!
        
        SceneManager.tickScene(renderCommandEncoder: renderCommandEncoder, deltaTime: 1 / Float(view.preferredFramesPerSecond))
        
        renderCommandEncoder.endEncoding()
        commandBuffer.present(drawable)
        commandBuffer.commit()
    }
}
