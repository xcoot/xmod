.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/quota/Categorizer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/JobSchedulerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final getCategory(Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/JobSchedulerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "timeout-uij"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 15
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    .line 21
    if-eqz p0, :cond_7

    .line 23
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    .line 25
    goto/16 :goto_0

    .line 27
    :cond_0
    const-string/jumbo v0, "timeout-ej"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    .line 38
    if-eqz p0, :cond_7

    .line 40
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo v0, "timeout-reg"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 52
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    .line 54
    if-eqz p0, :cond_7

    .line 56
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string/jumbo v0, "timeout-total"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 68
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    .line 70
    if-eqz p0, :cond_7

    .line 72
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "anr"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 83
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    .line 85
    if-eqz p0, :cond_7

    .line 87
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const-string v0, ".schedulePersisted()"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 98
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    .line 100
    if-eqz p0, :cond_7

    .line 102
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const-string v0, ".schedulePersisted out-of-quota logged"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 113
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    .line 115
    if-eqz p0, :cond_7

    .line 117
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    .line 119
    goto :goto_0

    .line 120
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    const-string v0, "Unexpected category tag: "

    .line 124
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    const-string p1, "JobScheduler"

    .line 136
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_7
    :goto_0
    return-object v1
.end method
