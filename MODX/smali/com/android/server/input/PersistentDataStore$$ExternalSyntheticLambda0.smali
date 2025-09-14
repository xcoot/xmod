.class public final synthetic Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    check-cast p2, Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "  key: "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    const-string v0, "  layout: "

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 46
    return-void

    .line 47
    :pswitch_0
    check-cast p2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "InputDevice ("

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string p1, ")"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 74
    iget-object p1, p2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 76
    check-cast p1, Landroid/util/ArrayMap;

    .line 78
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_0

    .line 84
    const-string p1, "Keyboard layout map:"

    .line 86
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 89
    iget-object p1, p2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;

    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-direct {v0, p0, v1}, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;I)V

    .line 97
    check-cast p1, Landroid/util/ArrayMap;

    .line 99
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 102
    :cond_0
    iget-object p1, p2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    .line 104
    if-eqz p1, :cond_1

    .line 106
    const-string p1, "Selected keyboard layouts:"

    .line 108
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    iget-object p1, p2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    .line 113
    check-cast p1, Ljava/util/HashSet;

    .line 115
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object p1

    .line 119
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_1

    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 138
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
