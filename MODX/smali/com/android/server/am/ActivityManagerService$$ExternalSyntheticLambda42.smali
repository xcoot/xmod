.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;IFJI)V
    .locals 0

    .line 1
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$1:Ljava/util/List;

    .line 7
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$2:I

    .line 9
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$3:F

    .line 11
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$4:J

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$1:Ljava/util/List;

    .line 10
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$2:I

    .line 12
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$3:F

    .line 14
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$4:J

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->handleBinderHeavyHitters(Ljava/util/List;IFJ)V

    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 25
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$1:Ljava/util/List;

    .line 27
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$2:I

    .line 29
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$3:F

    .line 31
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$4:J

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->handleBinderHeavyHitters(Ljava/util/List;IFJ)V

    .line 39
    return-void

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 42
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$1:Ljava/util/List;

    .line 44
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$2:I

    .line 46
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$3:F

    .line 48
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda42;->f$4:J

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->handleBinderHeavyHitters(Ljava/util/List;IFJ)V

    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
