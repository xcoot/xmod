.class public final synthetic Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/LocalColorRepository;

.field public final synthetic f$1:Landroid/app/ILocalWallpaperColorConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/LocalColorRepository;Landroid/app/ILocalWallpaperColorConsumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$1:Landroid/app/ILocalWallpaperColorConsumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$1:Landroid/app/ILocalWallpaperColorConsumer;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-interface {p0}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method
