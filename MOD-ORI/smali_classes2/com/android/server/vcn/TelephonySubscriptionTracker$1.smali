.class public final Lcom/android/server/vcn/TelephonySubscriptionTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
