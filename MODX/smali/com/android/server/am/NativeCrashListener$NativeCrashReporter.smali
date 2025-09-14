.class public final Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final mCrashReport:Ljava/lang/String;

.field public final mGwpAsanRecoverableCrash:Z

.field public final mSignal:I

.field public final synthetic this$0:Lcom/android/server/am/NativeCrashListener;


# direct methods
.method public constructor <init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;IZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    .line 3
    const-string p1, "NativeCrashReport"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object p2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 10
    iput p3, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    .line 12
    iput-boolean p4, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mGwpAsanRecoverableCrash:Z

    .line 14
    iput-object p5, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string/jumbo v0, "unknown"

    .line 4
    :try_start_0
    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 6
    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    .line 9
    const-string v2, "Native crash"

    .line 11
    iput-object v2, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 13
    iget v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    .line 15
    invoke-static {v2}, Landroid/system/Os;->strsignal(I)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    iput-object v2, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 21
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    .line 23
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    .line 25
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    .line 29
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    .line 33
    iget-object v0, v0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 35
    iget-boolean v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mGwpAsanRecoverableCrash:Z

    .line 37
    if-eqz v2, :cond_0

    .line 39
    const-string/jumbo v2, "native_recoverable_crash"

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string/jumbo v2, "native_crash"

    .line 48
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 50
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v2, p0, v3, v1}, Lcom/android/server/am/ActivityManagerService;->handleApplicationCrashInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_2

    .line 56
    :goto_1
    const-string v0, "NativeCrashListener"

    .line 58
    const-string v1, "Unable to report native crash"

    .line 60
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :goto_2
    return-void
.end method
