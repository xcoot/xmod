.class public final Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;
.super Ljava/lang/Record;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "activeRule",
        "keyCode",
        "pressCount",
        "displayId",
        "event",
        "policyFlags",
        "longPressType"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;,
        I,
        I,
        I,
        Landroid/view/KeyEvent;,
        I,
        I
    }
.end annotation


# instance fields
.field public final activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field public final displayId:I

.field public final event:Landroid/view/KeyEvent;

.field public final keyCode:I

.field public final longPressType:I

.field public final policyFlags:I

.field public final pressCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-custom {p0, p1}, call_site_3("equals", (Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;Ljava/lang/Object;)Z, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;, "activeRule;keyCode;pressCount;displayId;event;policyFlags;longPressType", instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-custom {p0}, call_site_4("hashCode", (Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;, "activeRule;keyCode;pressCount;displayId;event;policyFlags;longPressType", instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-custom {p0}, call_site_5("toString", (Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)Ljava/lang/String;, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;, "activeRule;keyCode;pressCount;displayId;event;policyFlags;longPressType", instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I, instance-get@Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
