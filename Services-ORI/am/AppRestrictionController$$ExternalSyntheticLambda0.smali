.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppRestrictionController;

.field public final synthetic f$1:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:Lcom/android/server/am/AppRestrictionController$TrackerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppRestrictionController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/usage/AppStandbyInternal;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$6:I

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$7:I

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$8:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppRestrictionController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/usage/AppStandbyInternal;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget v6, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    iget v4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$5:I

    .line 12
    .line 13
    iget v5, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$6:I

    .line 14
    .line 15
    iget v7, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$7:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$8:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    invoke-interface {v1, v2, v8, v6, v4}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    .line 27
    .line 28
    .line 29
    move-object v1, v2

    .line 30
    move v2, v3

    .line 31
    move v3, v5

    .line 32
    move v4, v7

    .line 33
    move-object v5, p0

    .line 34
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
