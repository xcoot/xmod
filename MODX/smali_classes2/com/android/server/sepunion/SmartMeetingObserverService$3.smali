.class public final Lcom/android/server/sepunion/SmartMeetingObserverService$3;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 20
    .line 21
    const/4 p2, 0x2

    .line 22
    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/SmartMeetingObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/SmartMeetingObserverService;IILandroid/content/ComponentName;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/SmartMeetingObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/SmartMeetingObserverService;IILandroid/content/ComponentName;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 20
    .line 21
    const/16 p2, 0x17

    .line 22
    .line 23
    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/SmartMeetingObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/SmartMeetingObserverService;IILandroid/content/ComponentName;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
