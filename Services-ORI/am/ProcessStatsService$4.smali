.class public final Lcom/android/server/am/ProcessStatsService$4;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$outData:[B


# direct methods
.method public constructor <init>([Landroid/os/ParcelFileDescriptor;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$4;->val$fds:[Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService$4;->val$outData:[B

    .line 4
    .line 5
    const-string p1, "ProcessStats pipe output"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$4;->val$fds:[Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService$4;->val$outData:[B

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string v0, "ProcessStatsService"

    .line 22
    .line 23
    const-string v1, "Failure writing pipe"

    .line 24
    .line 25
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
