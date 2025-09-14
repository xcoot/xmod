.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/accessibility/AccessibilityUserState;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Ljava/util/Set;

.field public final synthetic f$4:Ljava/util/Set;

.field public final synthetic f$5:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 8
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$2:Ljava/util/Set;

    .line 10
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$3:Ljava/util/Set;

    .line 12
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$4:Ljava/util/Set;

    .line 14
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$5:Ljava/util/Set;

    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 5
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$2:Ljava/util/Set;

    .line 7
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$3:Ljava/util/Set;

    .line 9
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$4:Ljava/util/Set;

    .line 11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;->f$5:Ljava/util/Set;

    .line 13
    check-cast p1, Landroid/content/ComponentName;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 39
    and-int/lit16 v1, v1, 0x100

    .line 41
    if-eqz v1, :cond_2

    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 52
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 56
    const/16 v5, 0x1d

    .line 58
    if-le v0, v5, :cond_6

    .line 60
    if-nez v1, :cond_3

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/lang/String;Ljava/util/Collection;)Z

    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_6

    .line 80
    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/lang/String;Ljava/util/Collection;)Z

    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_6

    .line 86
    invoke-static {v0, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/lang/String;Ljava/util/Collection;)Z

    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_6

    .line 92
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/lang/String;Ljava/util/Collection;)Z

    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_5

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "A enabled service requesting a11y button "

    .line 103
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string p1, " should be assign to the button or shortcut."

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    const-string p1, "AccessibilityManagerService"

    .line 120
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    :goto_1
    return-void
.end method
