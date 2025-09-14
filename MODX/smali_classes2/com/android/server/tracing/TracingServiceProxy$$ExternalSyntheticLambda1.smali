.class public final synthetic Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


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
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;->f$0:Landroid/tracing/TraceReportParams;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;->f$0:Landroid/tracing/TraceReportParams;

    .line 2
    .line 3
    check-cast p1, Landroid/os/IMessenger;

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/tracing/TraceReportParams;->usePipeForTesting:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 15
    .line 16
    iget-object v3, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 17
    .line 18
    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 22
    .line 23
    aget-object v4, v0, v1

    .line 24
    .line 25
    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    const/16 v4, 0x400

    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->readNBytes(I)[B

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    array-length v6, v5

    .line 35
    if-eq v6, v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    aget-object v0, v0, v2

    .line 48
    .line 49
    iput-object v0, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string p1, "Trace file too large when |usePipeForTesting| is set."

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_2
    move-exception p1

    .line 69
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 73
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :catchall_3
    move-exception p1

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_3
    throw p0

    .line 82
    :cond_1
    :goto_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput v1, v0, Landroid/os/Message;->what:I

    .line 87
    .line 88
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-interface {p1, v0}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V

    .line 91
    .line 92
    .line 93
    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    .line 94
    .line 95
    iget-wide v6, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    .line 96
    .line 97
    const/16 v2, 0x1a8

    .line 98
    .line 99
    const/4 v3, 0x2

    .line 100
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
