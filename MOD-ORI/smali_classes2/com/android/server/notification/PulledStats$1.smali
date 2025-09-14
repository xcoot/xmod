.class public final Lcom/android/server/notification/PulledStats$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/PulledStats;

.field public final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$report:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/PulledStats;[Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/PulledStats$1;->this$0:Lcom/android/server/notification/PulledStats;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/notification/PulledStats$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/server/notification/PulledStats$1;->val$report:I

    .line 6
    .line 7
    const-string p1, "NotificationManager pulled metric output"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/PulledStats$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

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
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/notification/PulledStats$1;->this$0:Lcom/android/server/notification/PulledStats;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/notification/PulledStats$1;->val$report:I

    .line 19
    .line 20
    invoke-virtual {v2, p0, v1}, Lcom/android/server/notification/PulledStats;->writeToProto(ILandroid/util/proto/ProtoOutputStream;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string v0, "PulledStats"

    .line 32
    .line 33
    const-string v1, "Failure writing pipe"

    .line 34
    .line 35
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
