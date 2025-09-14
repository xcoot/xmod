.class public final Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAddress:Ljava/lang/String;

.field public mVolume:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->this$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mAddress:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mVolume:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->this$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mAddress:Ljava/lang/String;

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mVolume:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "_addr"

    .line 18
    .line 19
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v3, "_index"

    .line 27
    .line 28
    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "_addr=\'"

    .line 34
    .line 35
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "\'"

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v1, "device_addr"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1, p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
