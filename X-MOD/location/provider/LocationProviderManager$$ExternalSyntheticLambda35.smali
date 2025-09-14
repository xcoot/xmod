.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Landroid/location/util/identity/CallerIdentity;

    .line 10
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 12
    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 14
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 21
    move-result p0

    .line 22
    if-ne p1, p0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0

    .line 28
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 30
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 32
    iget-object v0, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 34
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :pswitch_1
    check-cast p0, Ljava/lang/String;

    .line 51
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 53
    iget-object v0, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 55
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 57
    monitor-enter v0

    .line 58
    if-eqz p0, :cond_3

    .line 60
    :try_start_0
    iget-object v1, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 62
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    monitor-exit v0

    .line 74
    const/4 p0, 0x0

    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged$2$1()Z

    .line 81
    move-result p0

    .line 82
    monitor-exit v0

    .line 83
    :goto_2
    return p0

    .line 84
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0

    .line 86
    :pswitch_2
    check-cast p0, Ljava/lang/String;

    .line 88
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 90
    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 92
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
