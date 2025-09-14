.class public final Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnchorView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public final mPopup:Landroid/widget/PopupMenu;

.field public final mReceiver:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x33

    .line 6
    const/16 v1, 0x35

    .line 8
    const/16 v2, 0x53

    .line 10
    const/16 v3, 0x55

    .line 12
    filled-new-array {v0, v1, v2, v3}, [I

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

    .line 18
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    .line 21
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mReceiver:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

    .line 23
    const-string v2, "CornerActionSelectPopup corner : "

    .line 25
    const-string/jumbo v3, "usibi"

    .line 28
    invoke-static {p2, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 33
    const-string/jumbo v2, "window"

    .line 36
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/view/WindowManager;

    .line 42
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 44
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 46
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 51
    const/4 v2, 0x0

    .line 52
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 54
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    const/16 v2, 0x7d9

    .line 58
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 60
    aget p2, v0, p2

    .line 62
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 64
    const/16 p2, 0x120

    .line 66
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 68
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 70
    const/high16 v0, 0x20000

    .line 72
    or-int/2addr p2, v0

    .line 73
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 75
    const/4 p2, 0x3

    .line 76
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 78
    new-instance p1, Landroid/view/View;

    .line 80
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    .line 87
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 89
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 91
    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 103
    move-result-object p1

    .line 104
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 106
    and-int/lit8 p1, p1, 0x30

    .line 108
    const/16 p2, 0x20

    .line 110
    if-ne p1, p2, :cond_0

    .line 112
    const p1, 0x1030128

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const p1, 0x103012b

    .line 119
    :goto_0
    new-instance p2, Landroid/widget/PopupMenu;

    .line 121
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 123
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {v0, v2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 128
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    .line 130
    invoke-direct {p2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 133
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 135
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 137
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 140
    move-result-object p1

    .line 141
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method
