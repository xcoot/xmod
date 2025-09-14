.class public final synthetic Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 3
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method
