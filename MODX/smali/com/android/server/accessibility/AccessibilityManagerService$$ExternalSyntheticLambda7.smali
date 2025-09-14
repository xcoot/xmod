.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 5
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    .line 7
    packed-switch v2, :pswitch_data_0

    .line 10
    check-cast p1, Landroid/content/ComponentName;

    .line 12
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->$r8$clinit:I

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    move v0, v1

    .line 27
    :cond_0
    return v0

    .line 28
    :pswitch_0
    check-cast p1, Landroid/content/ComponentName;

    .line 30
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->$r8$clinit:I

    .line 32
    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 44
    move v0, v1

    .line 45
    :cond_1
    return v0

    .line 46
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 48
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_2
    check-cast p1, Landroid/content/ComponentName;

    .line 55
    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 67
    move v0, v1

    .line 68
    :cond_2
    return v0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
