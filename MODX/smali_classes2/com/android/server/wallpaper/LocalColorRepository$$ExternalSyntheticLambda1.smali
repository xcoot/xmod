.class public final synthetic Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/LocalColorRepository;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/RectF;

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/LocalColorRepository;ILandroid/graphics/RectF;Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/RectF;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Consumer;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Consumer;

    .line 8
    .line 9
    check-cast p1, Landroid/app/ILocalWallpaperColorConsumer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v0, v0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/util/SparseArray;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/util/ArraySet;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method
