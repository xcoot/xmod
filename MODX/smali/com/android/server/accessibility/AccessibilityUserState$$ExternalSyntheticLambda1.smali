.class public final synthetic Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityUserState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getTileServiceName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Landroid/content/ComponentName;

    .line 29
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    .line 38
    check-cast p0, Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    return-void

    .line 44
    :pswitch_0
    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getTileServiceName()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 62
    move-result-object p1

    .line 63
    new-instance v1, Landroid/content/ComponentName;

    .line 65
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 67
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 69
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 71
    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p1, Landroid/content/ComponentName;

    .line 76
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-direct {p1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    .line 85
    check-cast p0, Landroid/util/ArrayMap;

    .line 87
    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
