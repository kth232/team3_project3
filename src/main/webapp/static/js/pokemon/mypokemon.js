window.addEventListener("DOMContentLoaded", function() {
    const buttons = document.querySelectorAll("#frmList .button-action");
    for (const el of buttons) {
        el.addEventListener("click", function() {
            const mode = this.dataset.mode;
            const modeStr = mode == 'update' ? '수정' : '삭제';
            if (!confirm(`정말 ${modeStr} 하겠습니까?`)) {
                return;
            }

            frmList.mode.value = mode;

            frmList.submit();

        });
    }
});