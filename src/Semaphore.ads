
package Semaphore is

   protected Binary_Semaphore is
      entry Acquire;
      entry Release;

   private
      Open : boolean := true;
   end Binary_Semaphore;
end Semaphore;
