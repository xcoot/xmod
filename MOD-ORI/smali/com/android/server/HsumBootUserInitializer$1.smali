.class public final Lcom/android/server/HsumBootUserInitializer$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HsumBootUserInitializer;


# direct methods
.method public constructor <init>(Lcom/android/server/HsumBootUserInitializer;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    const-string p1, "HsumBootUserInitializer"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 9
    .line 10
    const-string/jumbo v1, "device_provisioned"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const-string v0, "Marking USER_SETUP_COMPLETE for system user"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 28
    .line 29
    const-string/jumbo v0, "user_setup_complete"

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string v0, "DEVICE_PROVISIONED setting not found."

    .line 47
    .line 48
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-void
.end method
