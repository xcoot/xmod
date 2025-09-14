.class public final synthetic Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/LaunchParamsPersister;

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
    iget v0, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/LaunchParamsPersister;

    .line 4
    .line 5
    check-cast p1, Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    new-instance p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
