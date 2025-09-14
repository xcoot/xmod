.class public final Lcom/android/server/am/ServiceRecord$removeConnectionItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final c:Lcom/android/server/am/ConnectionRecord;

.field public final enqueueOomAdj:Z

.field public final skipAct:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field public final skipApp:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->c:Lcom/android/server/am/ConnectionRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->skipApp:Lcom/android/server/am/ProcessRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->skipAct:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->enqueueOomAdj:Z

    .line 11
    .line 12
    return-void
.end method
