.class public final Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public actionType:I

.field public componentName:Ljava/lang/String;

.field public final exclusiveListSet:Ljava/util/HashSet;

.field public name:Ljava/lang/String;

.field public final setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public static -$$Nest$mturnOnOff(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->actionType:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget v3, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    .line 24
    .line 25
    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "enabled_accessibility_services"

    .line 37
    .line 38
    iget v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 39
    .line 40
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iput-object p0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget p0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    .line 50
    .line 51
    invoke-virtual {v1, p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    invoke-virtual {v1, p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->actionType:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    return v1

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_2
    return v1
.end method
