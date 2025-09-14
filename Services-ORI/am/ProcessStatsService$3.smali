.class public final Lcom/android/server/am/ProcessStatsService$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$section:I

.field public final synthetic val$stats:Lcom/android/internal/app/procstats/ProcessStats;


# direct methods
.method public constructor <init>([Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$stats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/server/am/ProcessStatsService$3;->val$section:I

    .line 6
    .line 7
    const-string p1, "ProcessStats pipe output"

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
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

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
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$stats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 17
    .line 18
    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/am/ProcessStatsService$3;->val$section:I

    .line 21
    .line 22
    invoke-virtual {v2, v1, v3, v4, p0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string v0, "ProcessStatsService"

    .line 34
    .line 35
    const-string v1, "Failure writing pipe"

    .line 36
    .line 37
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
