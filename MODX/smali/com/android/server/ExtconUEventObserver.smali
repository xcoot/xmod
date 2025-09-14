.class public abstract Lcom/android/server/ExtconUEventObserver;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExtconInfos:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/ExtconUEventObserver;->mExtconInfos:Ljava/util/Map;

    .line 11
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2

    .line 1
    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/server/ExtconUEventObserver;->mExtconInfos:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/ExtconUEventObserver;->onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No match found for DEVPATH of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver;->mExtconInfos:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExtconUEventObserver"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public abstract onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V
.end method
