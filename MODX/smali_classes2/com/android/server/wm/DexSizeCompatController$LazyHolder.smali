.class public abstract Lcom/android/server/wm/DexSizeCompatController$LazyHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sInstance:Lcom/android/server/wm/DexSizeCompatController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/DexSizeCompatController;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x3f3851ec    # 0.72f

    .line 7
    .line 8
    .line 9
    iput v1, v0, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 10
    .line 11
    iput v1, v0, Lcom/android/server/wm/DexSizeCompatController;->mAspectRatioScale:F

    .line 12
    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/android/server/wm/FreeformPersistBoundsParams;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/android/server/wm/DexPersistBoundsParams;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/android/server/wm/DexPersistBoundsParams;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/android/server/wm/NewDexPersistBoundsParams;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 34
    .line 35
    return-void
.end method
