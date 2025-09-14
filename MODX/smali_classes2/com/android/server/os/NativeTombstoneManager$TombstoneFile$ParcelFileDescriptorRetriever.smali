.class public final Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;
.super Landroid/app/IParcelFileDescriptorRetriever$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;


# direct methods
.method public constructor <init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;->this$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IParcelFileDescriptorRetriever$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getPfd()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    const-string v0, "/proc/self/fd/"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;->this$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;->this$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v0, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/high16 p0, 0x10000000

    .line 37
    .line 38
    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object p0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    .line 45
    .line 46
    const-string v0, "NativeTombstoneManager"

    .line 47
    .line 48
    const-string v1, "failed to reopen file descriptor as read-only"

    .line 49
    .line 50
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    return-object v2
.end method
