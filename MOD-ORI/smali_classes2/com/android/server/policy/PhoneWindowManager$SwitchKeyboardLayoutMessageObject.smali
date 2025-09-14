.class public final Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;
.super Ljava/lang/Record;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "keyEvent",
        "focusedToken",
        "direction"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Landroid/view/KeyEvent;,
        Landroid/os/IBinder;,
        I
    }
.end annotation


# instance fields
.field public final direction:I

.field public final focusedToken:Landroid/os/IBinder;

.field public final keyEvent:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->keyEvent:Landroid/view/KeyEvent;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-custom {p0, p1}, call_site_0("equals", (Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;Ljava/lang/Object;)Z, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;, "keyEvent;focusedToken;direction", instance-get@Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->keyEvent:Landroid/view/KeyEvent;, instance-get@Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;, instance-get@Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

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
    invoke-custom {p0}, call_site_1("hashCode", (Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)I, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;, "keyEvent;focusedToken;direction", instance-get@Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->keyEvent:Landroid/view/KeyEvent;, instance-get@Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;, instance-get@Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

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
    invoke-custom {p0}, call_site_2("toString", (Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)Ljava/lang/String;, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;, "keyEvent;focusedToken;direction", instance-get@Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->keyEvent:Landroid/view/KeyEvent;, instance-get@Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;, instance-get@Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
