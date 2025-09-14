.class public final synthetic Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/settings/SettingsStore;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/settings/SettingsStore;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/settings/SettingsStore;

    .line 5
    iput-object p2, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/settings/SettingsStore;

    .line 8
    iget-object p0, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/android/server/location/settings/LocationUserSettings;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_0
    iget-object v2, v0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 18
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/io/DataOutputStream;

    .line 24
    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 34
    iget-boolean p0, p0, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 36
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 39
    iget-object p0, v0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 41
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :goto_0
    iget-object v0, v0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 51
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 54
    throw p0

    .line 55
    :goto_1
    iget-object v0, v0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 57
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 60
    const-string v0, "LocationManagerService"

    .line 62
    const-string/jumbo v1, "failure serializing location settings"

    .line 65
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_2
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/settings/SettingsStore;

    .line 71
    iget-object p0, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 73
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 75
    iget-object v0, v0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 77
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 83
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
