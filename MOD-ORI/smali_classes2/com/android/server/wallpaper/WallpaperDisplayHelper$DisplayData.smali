.class public final Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayId:I

.field public mHeight:I

.field public final mPadding:Landroid/graphics/Rect;

.field public mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mDisplayId:I

    .line 18
    .line 19
    return-void
.end method
