.class public abstract synthetic Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
