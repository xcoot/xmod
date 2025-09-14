.class public final synthetic Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
