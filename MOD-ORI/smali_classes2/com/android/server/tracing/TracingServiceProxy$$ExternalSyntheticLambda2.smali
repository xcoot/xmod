.class public final synthetic Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/tracing/TraceReportParams;


# direct methods
.method public synthetic constructor <init>(Landroid/tracing/TraceReportParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;->f$0:Landroid/tracing/TraceReportParams;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;->f$0:Landroid/tracing/TraceReportParams;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Void;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Throwable;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    .line 10
    .line 11
    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    .line 12
    .line 13
    const/16 v0, 0x1a8

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 17
    .line 18
    .line 19
    const-string p1, "TracingServiceProxy"

    .line 20
    .line 21
    const-string v0, "Failed to report trace"

    .line 22
    .line 23
    invoke-static {p1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method
