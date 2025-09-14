.class public final Lcom/android/server/inputmethod/InputMethodManagerService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService$5;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dumpAsProtoNoCheck(Ljava/io/FileDescriptor;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    sub-long/2addr v1, v3

    .line 21
    const-wide v3, 0x10600000001L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v5, 0x45434152544d4d49L    # 4.655612620334995E25

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 32
    .line 33
    .line 34
    const-wide v5, 0x10600000003L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 40
    .line 41
    .line 42
    const-wide v1, 0x20b00000002L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 56
    .line 57
    .line 58
    const-wide v3, 0x10900000002L

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const-string p1, "InputMethodManagerService.mPriorityDumper#dumpAsProtoNoCheck"

    .line 64
    .line 65
    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$5;->dumpAsProtoNoCheck(Ljava/io/FileDescriptor;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8
    .line 9
    const/4 p4, 0x1

    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public final dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService$5;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$5;->dumpAsProtoNoCheck(Ljava/io/FileDescriptor;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8
    .line 9
    const/4 p4, 0x0

    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method
