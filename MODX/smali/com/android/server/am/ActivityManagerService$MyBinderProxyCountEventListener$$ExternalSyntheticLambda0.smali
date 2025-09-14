.class public final synthetic Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;

    .line 6
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;

    .line 3
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "Uid "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " sent too many Binders to uid "

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "ActivityManager"

    .line 36
    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Landroid/os/BinderProxy;->dumpProxyDebugInfo()V

    .line 42
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 51
    invoke-direct {v3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 54
    new-instance v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    .line 56
    invoke-direct {v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;-><init>()V

    .line 59
    iput p0, v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->uid:I

    .line 61
    invoke-virtual {v3, v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setExcessiveBinderCalls(Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 64
    invoke-virtual {v1, v3}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 67
    const/16 v1, 0x3e8

    .line 69
    if-ne p0, v1, :cond_0

    .line 71
    const-string p0, "Skipping kill (uid is SYSTEM)"

    .line 73
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 79
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 82
    move-result v4

    .line 83
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 86
    move-result v5

    .line 87
    const/16 v6, 0x9

    .line 89
    const/16 v7, 0x1d

    .line 91
    const-string v8, "Too many Binders sent to SYSTEM"

    .line 93
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->killUid(IIIILjava/lang/String;)V

    .line 96
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 103
    :goto_0
    return-void
.end method
