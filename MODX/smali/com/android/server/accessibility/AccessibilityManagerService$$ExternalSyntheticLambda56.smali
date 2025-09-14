.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Lcom/android/server/statusbar/StatusBarManagerInternal;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Set;Lcom/android/server/statusbar/StatusBarManagerInternal;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->f$0:Ljava/util/Map;

    .line 5
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->f$1:Ljava/util/Set;

    .line 7
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->f$2:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->f$0:Ljava/util/Map;

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->f$1:Ljava/util/Set;

    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->f$2:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_2

    .line 20
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p1, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    .line 29
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/content/ComponentName;

    .line 42
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 53
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->remTile(Landroid/content/ComponentName;)V

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_3
    :goto_1
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->f$0:Ljava/util/Map;

    .line 65
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->f$1:Ljava/util/Set;

    .line 67
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;->f$2:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 69
    check-cast p1, Ljava/lang/String;

    .line 71
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_6

    .line 77
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_4

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    sget-object p1, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    .line 86
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/content/ComponentName;

    .line 99
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_7

    .line 110
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 112
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 115
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 117
    if-eqz v0, :cond_7

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 121
    const/4 v0, 0x1

    .line 122
    invoke-interface {p0, p1, v0}, Lcom/android/internal/statusbar/IStatusBar;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    :goto_2
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :catch_0
    :cond_7
    :goto_3
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
