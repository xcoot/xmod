.class public final synthetic Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/ZenModeHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ZenModeHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$2:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ZenModeHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$2:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 28
    .line 29
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/android/server/notification/ZenModeHelper;->drawableResIdToResName(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    const-string v0, "ZenModeHelper"

    .line 39
    .line 40
    const-string v1, "Package not found for creating implicit zen rule"

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const-string v0, "Unknown"

    .line 46
    .line 47
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 48
    .line 49
    :goto_0
    return-void
.end method
