.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/pm/ShortcutPackage$1;

    .line 9
    .line 10
    check-cast p1, Landroid/app/appsearch/GenericDocument;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$1;->this$0:Lcom/android/server/pm/ShortcutPackage;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/content/pm/ShortcutInfo;->createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p0, Landroid/util/ArrayMap;

    .line 24
    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/content/pm/ShortcutInfo;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_1
    check-cast p0, Ljava/util/function/Consumer;

    .line 35
    .line 36
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 37
    .line 38
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
