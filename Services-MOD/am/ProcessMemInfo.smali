.class public final Lcom/android/server/am/ProcessMemInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final adjReason:Ljava/lang/String;

.field public final adjType:Ljava/lang/String;

.field public memtrack:J

.field public final name:Ljava/lang/String;

.field public final oomAdj:I

.field public final pid:I

.field public final procState:I

.field public pss:J

.field public swapPss:J


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/android/server/am/ProcessMemInfo;->pid:I

    .line 8
    iput p2, p0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 10
    iput p6, p0, Lcom/android/server/am/ProcessMemInfo;->procState:I

    .line 12
    iput-object p4, p0, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    .line 16
    return-void
.end method
