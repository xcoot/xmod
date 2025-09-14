.class public final Lcom/samsung/server/wallpaper/VirtualDisplayMode;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/server/wallpaper/VirtualDisplayMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isVirtualWallpaperDisplay(I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/VirtualDisplayMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    const-string v0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    array-length v0, p0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    array-length v0, p0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    .line 17
    aget-object v3, p0, v2

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne p1, v3, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method
