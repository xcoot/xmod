.class public final Lcom/android/server/display/OverlayDisplayWindow;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultDisplay:Landroid/view/Display;

.field public final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field public mDensityDpi:I

.field public final mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mHeight:I

.field public final mListener:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

.field public mLiveScale:F

.field public mLiveTranslationX:F

.field public mLiveTranslationY:F

.field public final mName:Ljava/lang/String;

.field public final mOnGestureListener:Lcom/android/server/display/OverlayDisplayWindow$4;

.field public final mOnScaleGestureListener:Lcom/android/server/display/OverlayDisplayWindow$5;

.field public final mOnTouchListener:Lcom/android/server/display/OverlayDisplayWindow$3;

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public final mSecure:Z

.field public final mSurfaceTextureListener:Lcom/android/server/display/OverlayDisplayWindow$2;

.field public final mTextureView:Landroid/view/TextureView;

.field public mTitle:Ljava/lang/String;

.field public mWidth:I

.field public final mWindowContent:Landroid/view/View;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field public mWindowScale:F

.field public mWindowVisible:Z

.field public mWindowX:I

.field public mWindowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "OverlayDisplayWindow"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/OverlayDisplayWindow;->DEBUG:Z

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIZLcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/view/DisplayInfo;

    .line 6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    .line 15
    new-instance v1, Lcom/android/server/display/OverlayDisplayWindow$1;

    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayWindow$1;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    .line 20
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

    .line 22
    new-instance v1, Lcom/android/server/display/OverlayDisplayWindow$2;

    .line 24
    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayWindow$2;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    .line 27
    new-instance v2, Lcom/android/server/display/OverlayDisplayWindow$3;

    .line 29
    invoke-direct {v2, p0}, Lcom/android/server/display/OverlayDisplayWindow$3;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    .line 32
    new-instance v3, Lcom/android/server/display/OverlayDisplayWindow$4;

    .line 34
    invoke-direct {v3, p0}, Lcom/android/server/display/OverlayDisplayWindow$4;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    .line 37
    new-instance v4, Lcom/android/server/display/OverlayDisplayWindow$5;

    .line 39
    invoke-direct {v4, p0}, Lcom/android/server/display/OverlayDisplayWindow$5;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    .line 42
    invoke-static {}, Landroid/view/ThreadedRenderer;->disableVsync()V

    .line 45
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mName:Ljava/lang/String;

    .line 49
    iput-boolean p7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    .line 51
    iput-object p8, p0, Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 53
    const-string/jumbo p2, "display"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 62
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 64
    const-string/jumbo p2, "window"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Landroid/view/WindowManager;

    .line 73
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 78
    move-result-object p2

    .line 79
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    .line 84
    const/4 p2, 0x0

    .line 85
    invoke-virtual {p0, p3, p4, p5, p2}, Lcom/android/server/display/OverlayDisplayWindow;->resize(IIIZ)V

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 91
    move-result-object p3

    .line 92
    const p4, 0x10900f1

    .line 95
    const/4 p5, 0x0

    .line 96
    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    move-result-object p3

    .line 100
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    .line 102
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    .line 107
    const p4, 0x1020482

    .line 110
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p3

    .line 114
    check-cast p3, Landroid/view/TextureView;

    .line 116
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 118
    const/4 p4, 0x0

    .line 119
    invoke-virtual {p3, p4}, Landroid/view/TextureView;->setPivotX(F)V

    .line 122
    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 124
    invoke-virtual {p3, p4}, Landroid/view/TextureView;->setPivotY(F)V

    .line 127
    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 129
    invoke-virtual {p3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    move-result-object p3

    .line 133
    iget p4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    .line 135
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 139
    invoke-virtual {p3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    move-result-object p3

    .line 143
    iget p4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    .line 145
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 149
    invoke-virtual {p3, p2}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 152
    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 154
    invoke-virtual {p3, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 157
    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    .line 159
    const p4, 0x1020483

    .line 162
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object p3

    .line 166
    check-cast p3, Landroid/widget/TextView;

    .line 168
    iget-object p4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    .line 170
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    .line 175
    const/16 p4, 0x7ea

    .line 177
    invoke-direct {p3, p4}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 180
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 182
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    const p5, 0x1000328

    .line 187
    or-int/2addr p5, p4

    .line 188
    iput p5, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 190
    if-eqz p7, :cond_0

    .line 192
    const p5, 0x1002328

    .line 195
    or-int/2addr p4, p5

    .line 196
    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 198
    :cond_0
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 200
    or-int/lit8 p4, p4, 0x2

    .line 202
    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 204
    const p4, 0x3f4ccccd    # 0.8f

    .line 207
    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 209
    const/16 p4, 0x33

    .line 211
    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 213
    iget-object p4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    .line 215
    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    new-instance p3, Landroid/view/GestureDetector;

    .line 220
    invoke-direct {p3, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 223
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 225
    new-instance p3, Landroid/view/ScaleGestureDetector;

    .line 227
    invoke-direct {p3, p1, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 230
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 232
    and-int/lit8 p1, p6, 0x3

    .line 234
    const/4 p3, 0x3

    .line 235
    if-ne p1, p3, :cond_1

    .line 237
    move p1, p2

    .line 238
    goto :goto_0

    .line 239
    :cond_1
    iget p1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 241
    :goto_0
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    .line 243
    const/16 p1, 0x30

    .line 245
    and-int/lit8 p3, p6, 0x30

    .line 247
    if-ne p3, p1, :cond_2

    .line 249
    goto :goto_1

    .line 250
    :cond_2
    iget p2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 252
    :goto_1
    iput p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    .line 254
    const/high16 p1, 0x3f000000    # 0.5f

    .line 256
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    .line 258
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 7
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 14
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    .line 16
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    .line 22
    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "mWindowVisible="

    .line 6
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    .line 11
    const-string/jumbo v1, "mWindowX="

    .line 14
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p2

    .line 18
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    .line 20
    const-string/jumbo v1, "mWindowY="

    .line 23
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object p2

    .line 27
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    .line 29
    const-string/jumbo v1, "mWindowScale="

    .line 32
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object p2

    .line 36
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    .line 38
    const-string/jumbo v1, "mWindowParams="

    .line 41
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object p2

    .line 45
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 59
    if-eqz p2, :cond_0

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v0, "mTextureView.getScaleX()="

    .line 66
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 71
    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleX()F

    .line 74
    move-result v0

    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v0, "mTextureView.getScaleY()="

    .line 90
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 95
    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleY()F

    .line 98
    move-result v0

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v0, "mLiveTranslationX="

    .line 114
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    .line 119
    const-string/jumbo v1, "mLiveTranslationY="

    .line 122
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    move-result-object p2

    .line 126
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    .line 128
    const-string/jumbo v1, "mLiveScale="

    .line 131
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    move-result-object p2

    .line 135
    iget p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    .line 137
    invoke-static {p2, p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 140
    return-void
.end method

.method public final relayout()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateWindowParams()V

    .line 8
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 10
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    .line 12
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 14
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :cond_0
    return-void
.end method

.method public final resize(IIIZ)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    .line 3
    iput p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    .line 5
    iput p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDensityDpi:I

    .line 7
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mName:Ljava/lang/String;

    .line 15
    iget p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p3

    .line 21
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDensityDpi:I

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    filled-new-array {p2, p3, v0, v1}, [Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    const p3, 0x104048a

    .line 40
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    .line 46
    iget-boolean p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    .line 48
    if-eqz p1, :cond_0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p2

    .line 66
    const p3, 0x1040489

    .line 69
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    .line 82
    :cond_0
    if-eqz p4, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    .line 87
    :cond_1
    return-void
.end method

.method public final updateDefaultDisplayInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    const-string p0, "OverlayDisplayWindow"

    .line 13
    const-string v0, "Cannot show overlay display because there is no default display upon which to show it."

    .line 15
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final updateWindowParams()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    .line 3
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    .line 5
    mul-float/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 10
    int-to-float v1, v1

    .line 11
    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    .line 13
    int-to-float v2, v2

    .line 14
    div-float/2addr v1, v2

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 21
    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 23
    int-to-float v1, v1

    .line 24
    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    .line 26
    int-to-float v2, v2

    .line 27
    div-float/2addr v1, v2

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 31
    move-result v0

    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 37
    move-result v0

    .line 38
    const v2, 0x3e99999a    # 0.3f

    .line 41
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 44
    move-result v0

    .line 45
    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    .line 47
    div-float v2, v0, v2

    .line 49
    sub-float/2addr v2, v1

    .line 50
    const/high16 v1, 0x3f000000    # 0.5f

    .line 52
    mul-float/2addr v2, v1

    .line 53
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    .line 55
    int-to-float v1, v1

    .line 56
    mul-float/2addr v1, v0

    .line 57
    float-to-int v1, v1

    .line 58
    iget v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    .line 60
    int-to-float v3, v3

    .line 61
    mul-float/2addr v3, v0

    .line 62
    float-to-int v3, v3

    .line 63
    iget v4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    .line 65
    int-to-float v4, v4

    .line 66
    iget v5, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    .line 68
    add-float/2addr v4, v5

    .line 69
    int-to-float v5, v1

    .line 70
    mul-float/2addr v5, v2

    .line 71
    sub-float/2addr v4, v5

    .line 72
    float-to-int v4, v4

    .line 73
    iget v5, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    .line 75
    int-to-float v5, v5

    .line 76
    iget v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    .line 78
    add-float/2addr v5, v6

    .line 79
    int-to-float v6, v3

    .line 80
    mul-float/2addr v6, v2

    .line 81
    sub-float/2addr v5, v6

    .line 82
    float-to-int v5, v5

    .line 83
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 85
    iget v6, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 87
    sub-int/2addr v6, v1

    .line 88
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 91
    move-result v4

    .line 92
    const/4 v6, 0x0

    .line 93
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 96
    move-result v4

    .line 97
    iget-object v7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 99
    iget v7, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 101
    sub-int/2addr v7, v3

    .line 102
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 105
    move-result v5

    .line 106
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 109
    move-result v5

    .line 110
    sget-boolean v6, Lcom/android/server/display/OverlayDisplayWindow;->DEBUG:Z

    .line 112
    if-eqz v6, :cond_0

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v7, "updateWindowParams: scale="

    .line 119
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 125
    const-string v7, ", offsetScale="

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, ", x="

    .line 135
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, ", y="

    .line 140
    const-string v7, ", width="

    .line 142
    invoke-static {v4, v5, v2, v7, v6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 145
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, ", height="

    .line 150
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    const-string v6, "OverlayDisplayWindow"

    .line 162
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 167
    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setScaleX(F)V

    .line 170
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 172
    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setScaleY(F)V

    .line 175
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 177
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 179
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 181
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 183
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 185
    return-void
.end method
