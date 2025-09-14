.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/PowerGroup;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerGroup;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/power/PowerGroup;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/power/PowerGroup;

    .line 6
    .line 7
    iget v6, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    sget-object p0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v3, v1, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->findForegroundPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget-object p0, v0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    move-object v1, v0

    .line 30
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;-><init>(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
