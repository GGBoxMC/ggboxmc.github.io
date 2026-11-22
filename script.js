// GGBox Launcher Landing Page Interaction Script

document.addEventListener('DOMContentLoaded', () => {
  // 1. FAQ Accordion Logic
  const faqItems = document.querySelectorAll('.faq-item');
  
  faqItems.forEach(item => {
    const questionBtn = item.querySelector('.faq-question');
    questionBtn.addEventListener('click', () => {
      const isActive = item.classList.contains('active');
      
      // Diğerlerini kapat (opsiyonel ama şık durur)
      faqItems.forEach(otherItem => {
        if (otherItem !== item) {
          otherItem.classList.remove('active');
        }
      });

      // Tıklananı aç / kapat
      if (!isActive) {
        item.classList.add('active');
      } else {
        item.classList.remove('active');
      }
    });
  });

  // 2. Mockup Play Button Interactive Reaction
  const mockupPlayBtn = document.querySelector('.mockup-play-btn');
  if (mockupPlayBtn) {
    mockupPlayBtn.addEventListener('click', () => {
      const originalText = mockupPlayBtn.innerHTML;
      mockupPlayBtn.innerHTML = `<span>BAŞLATILIYOR...</span>`;
      mockupPlayBtn.style.opacity = '0.8';
      
      setTimeout(() => {
        mockupPlayBtn.innerHTML = `<span>OYUN AÇILDI!</span>`;
        mockupPlayBtn.style.background = 'linear-gradient(135deg, #00ffa3, #00b8d4)';
        
        setTimeout(() => {
          mockupPlayBtn.innerHTML = originalText;
          mockupPlayBtn.style.background = '';
          mockupPlayBtn.style.opacity = '1';
        }, 2000);
      }, 1000);
    });
  }

  // 3. Smooth Anchor Scrolling with header offset
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
      const targetId = this.getAttribute('href');
      if (targetId === '#' || targetId === '') return;
      
      const targetElement = document.querySelector(targetId);
      if (targetElement) {
        e.preventDefault();
        const headerOffset = 80;
        const elementPosition = targetElement.getBoundingClientRect().top;
        const offsetPosition = elementPosition + window.pageYOffset - headerOffset;

        window.scrollTo({
          top: offsetPosition,
          behavior: 'smooth'
        });
      }
    });
  });

  // 4. Download Notification Helper
  const downloadLinks = document.querySelectorAll('a[href*=".exe"], a[href*=".zip"]');
  downloadLinks.forEach(link => {
    link.addEventListener('click', (e) => {
      // Konsol ve kullanıcı deneyimi için indirme logu
      console.log('GGBox Launcher indirmesi başlatıldı:', link.href);
    });
  });
});
