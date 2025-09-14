.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/PowerGroup;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerGroup;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/PowerGroup;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/PowerGroup;

    .line 6
    .line 7
    iget v6, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$3:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    sget-object p0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget v3, v1, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->findForegroundPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object p0, v0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    move-object v1, v0

    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;-><init>(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
