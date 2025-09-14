.class public final Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActiveDataSubscriptionIdChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
