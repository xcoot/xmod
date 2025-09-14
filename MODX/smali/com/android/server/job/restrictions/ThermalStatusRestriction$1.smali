.class public final Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;


# direct methods
.method public constructor <init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 6
    return-void
.end method


# virtual methods
.method public final onThermalStatusChanged(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lt p1, v2, :cond_0

    .line 6
    if-le p1, v1, :cond_2

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 10
    iget v3, v3, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 12
    if-lt v3, v2, :cond_1

    .line 14
    if-lt p1, v2, :cond_2

    .line 16
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 18
    iget v3, v3, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 20
    if-ge v3, v1, :cond_3

    .line 22
    if-le p1, v1, :cond_3

    .line 24
    :cond_2
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_3
    move v1, v0

    .line 27
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 29
    iget v4, v3, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 31
    if-ge v4, p1, :cond_4

    .line 33
    move v0, v2

    .line 34
    :cond_4
    iput-boolean v0, v3, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIncreased:Z

    .line 36
    iget-object v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 38
    iput p1, v0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 40
    if-eqz v1, :cond_5

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    const-string v0, "ThermalStatus changed to "

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 51
    iget v0, v0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 53
    const-string v1, "ThermalStatusRestriction"

    .line 55
    invoke-static {p1, v0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 60
    iget-object p1, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIncreased:Z

    .line 64
    invoke-virtual {p1, p0, v0}, Lcom/android/server/job/JobSchedulerService;->onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V

    .line 67
    :cond_5
    return-void
.end method
